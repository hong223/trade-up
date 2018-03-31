package com.tradeup


import grails.rest.*
import grails.converters.*

class EmployeeController {
	static responseFormats = ['json', 'xml']
    def scaffold = Employee
	
    def index() { }
}
