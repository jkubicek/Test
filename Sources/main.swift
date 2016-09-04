import Kitura
import HeliumLogger
import SwiftyJSON

HeliumLogger.use()

let router = Router()

router.get("/") { request, response, next in
  response.send("Hello, World!")
  next()
}

router.get("json") { request, response, next in
  response.send(json: JSON(["name": "Jim Kubicek", "message": "Hello, World"]))
  next()
}

router.post("data/:id") { request, response, next in
  response.send("Set data for ID: \(request.parameters["id"])\n\(try request.readString())")
  next()
}

Kitura.addHTTPServer(onPort: 8080, with: router)
Kitura.run()
