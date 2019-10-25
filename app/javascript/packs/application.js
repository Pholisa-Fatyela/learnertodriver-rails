import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

require("@rails/ujs").start()

import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";

Turbolinks.start();
ActiveStorage.start();

const application = Application.start()
const context = require.context("./controllers", true, /\.js$/)
application.load(definitionsFromContext(context))

// modules
import * as pwa from './utils/pwa.js';
import * as ServiceWorker from './utils/service_worker.js';
import * as ApexCharts from './helpers/chart.js';
import * as TimeAgo from './helpers/time_date.js';
import * as Quiz from './ui/quiz.js';


require("trix")
require("@rails/actiontext")