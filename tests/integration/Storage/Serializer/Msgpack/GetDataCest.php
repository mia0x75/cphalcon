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

namespace Phalcon\Tests\Integration\Storage\Serializer\Msgpack;

use Phalcon\Storage\Serializer\Msgpack;
use IntegrationTester;

class GetDataCest
{
    /**
     * Tests Phalcon\Storage\Serializer\Msgpack :: getData()
     *
     * @author Phalcon Team <team@phalcon.io>
     * @since  2019-03-30
     */
    public function storageSerializerMsgpackGetData(IntegrationTester $I)
    {
        $I->wantToTest('Storage\Serializer\Msgpack - getData()');
        $data       = ['Phalcon Framework'];
        $serializer = new Msgpack($data);

        $expected = $data;
        $actual   = $serializer->getData();
        $I->assertEquals($expected, $actual);
    }
}
