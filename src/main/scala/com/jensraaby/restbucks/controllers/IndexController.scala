package com.jensraaby.restbucks.controllers

import com.twitter.finagle.http.Request
import com.twitter.finatra.http.Controller


class IndexController extends Controller {

  get("/") { req: Request =>
    "Hello World"
  }

}
