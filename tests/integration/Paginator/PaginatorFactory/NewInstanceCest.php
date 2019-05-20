<?php
declare(strict_types=1);

/**
 * This file is part of the Phalcon Framework.
 *
 * (c) Phalcon Team <team@phalconphp.com>
 *
 * For the full copyright and license information, please view the LICENSE.txt
 * file that was distributed with this source code.
 */

namespace Phalcon\Test\Integration\Paginator\PaginatorFactory;

use Phalcon\Paginator\Adapter\NativeArray;
use Phalcon\Paginator\Adapter\AdapterInterface;
use Phalcon\Paginator\PaginatorFactory;
use IntegrationTester;

class NewInstanceCest
{
    /**
     * Tests Phalcon\Paginator\AdapterFactory :: newInstance()
     *
     * @author Phalcon Team <team@phalconphp.com>
     * @since  2019-05-18
     */
    public function paginatorAdapterFactoryNewInstance(IntegrationTester $I)
    {
        $I->wantToTest('Paginator\AdapterFactory - newInstance()');

        $factory = new PaginatorFactory();
        $adapter = $factory->newInstance('nativeArray');

        $I->assertInstanceOf(
            NativeArray::class,
            $adapter
        );

        $I->assertInstanceOf(
            AdapterInterface::class,
            $adapter
        );
    }
}