// Import and register all your controllers from the importmap via controllers/**/*_controller
import { application } from "controllers/application"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)
import { application } from "@hotwired/stimulus"

import ScheduleController from "./schedule_controller"
application.register("schedule", ScheduleController)
