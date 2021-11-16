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

namespace Phalcon\Tests\Unit\Assets\Asset\Css;

use Codeception\Example;
use Phalcon\Assets\Asset\Css;
use UnitTester;

/**
 * Class GetRealTargetPathCest
 *
 * @package Phalcon\Tests\Unit\Assets\Asset\Css
 */
class GetRealTargetPathCest
{
    /**
     * Tests Phalcon\Assets\Asset\Css :: getRealTargetPath()
     *
     * @dataProvider provider
     *
     * @param UnitTester $I
     * @param Example    $example
     *
     * @author       Phalcon Team <team@phalcon.io>
     * @since        2020-09-09
     */
    public function assetsAssetCssGetAssetKeyLocal(UnitTester $I, Example $example)
    {
        $I->wantToTest('Assets\Asset\Css - getRealTargetPath()');

        $asset = new Css($example['path']);

        $expected = $example['path'];
        $actual   = $asset->getRealTargetPath();
        $I->assertEquals($expected, $actual);
    }

    /**
     * @return array[]
     */
    protected function provider(): array
    {
        return [
            [
                'path'  => 'js/jquery.js',
                'local' => true,
            ],
            [
                'path'  => 'https://phalcon.ld/js/jquery.js',
                'local' => false,
            ],
        ];
    }
}
