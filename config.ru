$LOAD_PATH.unshift '.'
require 'config/environment'

use AdventurersController
use PotionsController
use PurchasesController
run ApplicationController
