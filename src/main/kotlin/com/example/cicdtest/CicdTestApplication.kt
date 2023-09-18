package com.example.cicdtest

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@SpringBootApplication
class CicdTestApplication

fun main(args: Array<String>) {

	runApplication<CicdTestApplication>(*args)
}

@RestController
class HealthCheckController {
	@GetMapping("/ping")
	fun healthCheck(): String = "pong"
}
