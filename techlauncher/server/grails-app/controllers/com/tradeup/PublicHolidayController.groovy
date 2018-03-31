package com.tradeup

import grails.rest.*
import grails.converters.*
import groovy.sql.Sql

class PublicHolidayController{
    static responseFormats = ['json', 'xml']
    static scaffold = PublicHoliday

    def index(){
    }

}
