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

namespace Phalcon\Tests\Integration\Validation\Validator\CreditCard;

use IntegrationTester;
use Phalcon\Tests\Fixtures\Traits\ValidationTrait;
use Phalcon\Validation\Validator\CreditCard;

/**
 * Class GetOptionCest
 */
class GetOptionCest
{
    use ValidationTrait;

    /**
     * Tests Phalcon\Validation\Validator\CreditCard :: getOption()
     *
     * @author Phalcon Team <team@phalcon.io>
     * @since  2018-11-13
     */
    public function validationValidatorCreditCardGetOption(IntegrationTester $I)
    {
        $I->wantToTest('Validation\Validator\CreditCard - getOption()');

        $validator = new CreditCard();

        $this->checkGetOption($I, $validator);
    }
}
