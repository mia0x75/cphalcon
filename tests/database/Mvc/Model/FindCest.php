<?php

/**
 * This file is part of the Phalcon Framework.
 *
 * (c) Phalcon Team <team@phalcon.io>
 *
 * For the full copyright and license information, please view the LICENSE.txt
 * file that was distributed with this source code.
 */

declare(strict_types=1);

namespace Phalcon\Test\Database\Mvc\Model;

use DatabaseTester;
use PDO;
use Phalcon\Cache;
use Phalcon\Cache\AdapterFactory;
use Phalcon\Mvc\Model\Exception;
use Phalcon\Storage\SerializerFactory;
use Phalcon\Test\Fixtures\Migrations\AbstractMigration;
use Phalcon\Test\Fixtures\Migrations\CustomersMigration;
use Phalcon\Test\Fixtures\Migrations\InvoicesMigration;
use Phalcon\Test\Fixtures\Migrations\ObjectsMigration;
use Phalcon\Test\Fixtures\Traits\DiTrait;
use Phalcon\Test\Models\Customers;
use Phalcon\Test\Models\Invoices;
use Phalcon\Test\Models\Objects;

use function getOptionsRedis;
use function outputDir;
use function uniqid;

/**
 * Class FindCest
 */
class FindCest
{
    use DiTrait;

    public function _before(DatabaseTester $I)
    {
        $this->setNewFactoryDefault();
        $this->setDatabase($I);
    }

    /**
     * Tests Phalcon\Mvc\Model :: find()
     *
     * @author Phalcon Team <team@phalcon.io>
     * @since  2020-02-01
     *
     * @group  mysql
     * @group  pgsql
     * @group  sqlite
     */
    public function mvcModelFind(DatabaseTester $I)
    {
        $I->wantToTest('Mvc\Model - find()');

        /** @var PDO $connection */
        $connection = $I->getConnection();
        $migration  = new ObjectsMigration($connection);
        $migration->insert(1, 'random data', 1);

        $data = Objects::find();

        $I->assertEquals(1, count($data));

        $record = $data[0];
        $I->assertEquals(1, $record->obj_id);
        $I->assertEquals('random data', $record->obj_name);
    }

    /**
     * Tests Phalcon\Mvc\Model :: find()
     *
     * @author Phalcon Team <team@phalcon.io>
     * @since  2020-02-01
     *
     * @group  mysql
     * @group  pgsql
     * @group  sqlite
     */
    public function mvcModelFindWithCache(DatabaseTester $I)
    {
        $I->wantToTest('Mvc\Model - find() - with cache');

        $file = outputDir('data-/my/-c/ac/my-cache');
        $I->safeDeleteFile($file);

        /** @var PDO $connection */
        $connection = $I->getConnection();
        $migration  = new ObjectsMigration($connection);
        $migration->insert(1, 'random data', 1);

        $options = [
            'defaultSerializer' => 'Json',
            'storageDir'        => outputDir(),
            'lifetime'          => 172800,
            'prefix'            => 'data-',
        ];

        // Models Cache setup
        $serializerFactory = new SerializerFactory();
        $adapterFactory    = new AdapterFactory($serializerFactory);
        $adapter           = $adapterFactory->newInstance('stream', $options);
        $cache             = new Cache($adapter);

        $this->container->setShared('modelsCache', $cache);

        /**
         * Get the records (should cache the resultset)
         */
        $data = Objects::find(
            [
                'cache' => [
                    'key' => 'my-cache',
                ],
            ]
        );

        /**
         * See the file created
         */
        $I->seeFileFound($file);

        $I->assertEquals(1, count($data));

        $record = $data[0];
        $I->assertEquals(1, $record->obj_id);
        $I->assertEquals('random data', $record->obj_name);

        /**
         * Get the models cache
         */
        $modelsCache = $this->container->get('modelsCache');

        $exists = $modelsCache->has('my-cache');
        $I->assertTrue($exists);

        /**
         * Get the data now from the cache
         */
        $data = $modelsCache->get('my-cache');

        $I->assertEquals(1, count($data));

        $record = $data[0];
        $I->assertEquals(1, $record->obj_id);
        $I->assertEquals('random data', $record->obj_name);
    }

    /**
     * Tests Phalcon\Mvc\Model :: find() - second iteration of Resultset
     *
     * @author Phalcon Team <team@phalcon.io>
     * @since  2020-10-17
     *
     * @see https://github.com/phalcon/cphalcon/issues/15065
     *
     * @group  mysql
     * @group  pgsql
     * @group  sqlite
     */
    public function mvcModelFindResultsetSecondIteration(DatabaseTester $I)
    {
        $I->wantToTest('Mvc\Model - find() - second iteration of Resultset');

        /** @var PDO $connection */
        $connection = $I->getConnection();

        $customersMigration = new CustomersMigration($connection);
        $customersMigration->clear();
        $customersMigration->insert(1, 1, uniqid('cust-', true), uniqid('cust-', true));
        $customersMigration->insert(2, 0, uniqid('cust-', true), uniqid('cust-', true));

        $customers = Customers::find();

        $I->assertCount(2, $customers);

        /**
         * First iteration
         *
         * @var Customers $customer
         */
        foreach ($customers as $customer) {
            $I->assertNotNull(
                $customer->getId()
            );

            $I->assertIsNumeric(
                $customer->getId()
            );
        }

        /**
         * Second iteration
         *
         * @var Customers $secondCustomer
         */
        foreach ($customers as $secondCustomer) {
            $I->assertNotNull(
                $secondCustomer->getId()
            );

            $I->assertIsNumeric(
                $secondCustomer->getId()
            );
        }
    }

    /**
     * Tests Phalcon\Mvc\Model :: find() - with cache/exception
     *
     * @author Phalcon Team <team@phalcon.io>
     * @since  2021-05-10
     *
     * @group  mysql
     * @group  pgsql
     * @group  sqlite
     */
    public function mvcModelFindWithCacheException(DatabaseTester $I)
    {
        $I->wantToTest('Mvc\Model - find() - with cache - exception');

        $I->expectThrowable(
            new Exception(
                'Cache service must be an object implementing Psr\SimpleCache\CacheInterface'
            ),
            function () {
                $options = [
                    'storageDir' => outputDir(),
                    'lifetime'   => 172800,
                    'prefix'     => 'data-',
                ];

                // Models Cache setup
                $serializerFactory = new SerializerFactory();
                $adapterFactory    = new AdapterFactory($serializerFactory);
                $adapter           = $adapterFactory->newInstance('stream', $options);

                $this->container->setShared('modelsCache', $adapter);

                Objects::find(
                    [
                        'cache' => [
                            'key' => 'my-cache',
                        ],
                    ]
                );
            }
        );
    }

    /**
     * Tests Phalcon\Mvc\Model :: find() - private property with Redis cache
     *
     * @author Phalcon Team <team@phalcon.io>
     * @since  2021-05-25
     * @issue  15439
     *
     * @group  mysql
     */
    public function mvcModelFindPrivatePropertyWithRedisCache(DatabaseTester $I)
    {
        $I->wantToTest('Mvc\Model - find() - private property with Redis cache');

        /** @var PDO $connection */
        $connection = $I->getConnection();
        $migration  = new InvoicesMigration($connection);
        $migration->insert(1, 1, 1, 'Test', 101);

        $cacheKey = uniqid('redis-');

        /**
         * Find without models cache
         */
        /** @var Invoices $original */
        $original = Invoices::find(
            [
                'conditions' => 'inv_id = :inv_id:',
                'bind'       => [
                    'inv_id' => 1,
                ],
            ]
        );

        $I->assertCount(1, $original);

        $record = $original[0];
        $actual = $record->getIsActive();

        $I->assertTrue($actual);

        // Models Cache setup
        $serializerFactory = new SerializerFactory();
        $adapterFactory    = new AdapterFactory($serializerFactory);
        $adapter           = $adapterFactory->newInstance('redis', getOptionsRedis());
        $cache             = new Cache($adapter);
        $this->container->setShared('modelsCache', $cache);

        /**
         * Find it - so that we can use the models cache now
         */
        /** @var Invoices $cached */
        $cached = Invoices::find(
            [
                'conditions' => 'inv_id = :inv_id:',
                'bind'       => [
                    'inv_id' => 1,
                ],
                'cache'      => [
                    'key'      => $cacheKey,
                    'lifetime' => 60,
                ],
            ]
        );

        $I->assertCount(1, $cached);

        $record = $cached[0];
        $actual = $record->getIsActive();
        $I->assertTrue($actual);

        /**
         * Delete the record just in case to ensure we get it from the cache
         */
        $result = $original->delete();
        $I->assertNotFalse($result);

        /**
         * Ensure we do not have anything in the db
         */
        /** @var Invoices $original */
        $original = Invoices::find(
            [
                'conditions' => 'inv_id = :inv_id:',
                'bind'       => [
                    'inv_id' => 1,
                ],
            ]
        );

        $I->assertCount(0, $original);

        /**
         * Finally get it back from the cache
         */
        /** @var Invoices $cached */
        $cached = Invoices::find(
            [
                'conditions' => 'inv_id = :inv_id:',
                'bind'       => [
                    'inv_id' => 1,
                ],
                'cache'      => [
                    'key'      => $cacheKey,
                    'lifetime' => 60,
                ],
            ]
        );

        $I->assertCount(1, $cached);

        $record = $cached[0];
        $actual = $record->getIsActive();
        $I->assertTrue($actual);

        /**
         * delete the cached entry
         */
        $result = $cache->delete($cacheKey);
        $I->assertTrue($result);
    }
}
