package com.tradeup


import grails.rest.*
import grails.converters.*

class PublicHolidayController {
	static responseFormats = ['json', 'xml']
  def scaffold = PublicHoliday
	
    def index() { }
}
