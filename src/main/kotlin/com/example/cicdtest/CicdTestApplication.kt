package com.example.cicdtest

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class CicdTestApplication

fun main(args: Array<String>) {
	runApplication<CicdTestApplication>(*args)
}
