import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

require("trix")
require("@rails/ujs").start()
require("@rails/actiontext")

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
import * as Quiz from './app/quiz.js';
