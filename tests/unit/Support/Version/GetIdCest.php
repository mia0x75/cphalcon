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

namespace Phalcon\Test\Unit\Support\Version;

use Phalcon\Test\Fixtures\Traits\VersionTrait;
use Phalcon\Support\Version;
use UnitTester;

use function is_string;

class GetIdCest
{
    use VersionTrait;

    /**
     * Tests Phalcon\Support\Version :: getId()
     *
     * @author Phalcon Team <team@phalcon.io>
     * @since  2018-11-13
     */
    public function supportVersionGetId(UnitTester $I)
    {
        $I->wantToTest('Version - getId()');

        $version = new Version();
        $I->assertTrue(is_string($version->getId()));
    }

    /**
     * Tests the get() translation to getId()
     *
     * @author Phalcon Team <team@phalcon.io>
     * @since  2018-11-13
     */
    public function supportVersionGetToGetId(UnitTester $I)
    {
        $I->wantToTest('Version - get() to getId()');

        $object  = new Version();
        $version = $object->get();
        $chunks  = preg_split('/[^A-Za-z\s]/i', $version);

        $special   = '4';
        $specialNo = '0';

        // There are pre-release version parts (eg. 4.0.0alpha2)
        if (count($chunks) > 1) {
            if (0 === preg_match('~[0-9]~', $chunks[1])) { // 4.0.0alpha
                $special = $this->specialToNumber(
                    $chunks[1]
                );
            } else { // 4.0.0alpha2
                $specialNo = preg_replace('/[^0-9]', '', $chunks[1]);

                $special = $this->specialToNumber(preg_replace('/[^A-Za-z]', '', $chunks[1]));
            }
        }

        // Now the version itself
        $verChunks = explode('.', $chunks[0]);
        $major     = intval($verChunks[0]);
        $med       = substr('00' . intval($verChunks[1]), -2);
        $min       = substr('00' . intval($verChunks[2]), -2);

        $I->assertEquals(
            "{$major}{$med}{$min}{$special}{$specialNo}",
            $object->getId()
        );
    }
}
