// Import and register all your controllers from the importmap under controllers/*
import { application } from "controllers/application";

// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading";
eagerLoadControllersFrom("controllers", application);

// Import and register the custom AlertsController
// import AlertsController from "controllers/alerts_controller"; // Ensure this path matches where your file is located

// application.register("alerts", AlertsController);

// Lazy load controllers as they appear in the DOM (remember not to preload controllers in import map!)
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// lazyLoadControllersFrom("controllers", application)
