<?php

/**
 * This file is part of the Phalcon Framework.
 *
 * (c) Phalcon Team <team@phalcon.io>
 *
 * For the full copyright and license information, please view the LICENSE.txt
 * file that was distributed with this source code.
 */

namespace Phalcon\Tests\Models\Relations;

use Phalcon\Mvc\Model;

class M2MRobotsParts extends Model
{
    public function initialize()
    {
        $this->setSource('m2m_robots_parts');
    }
}
