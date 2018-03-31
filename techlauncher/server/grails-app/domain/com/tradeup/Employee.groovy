package com.tradeup

import grails.rest.*

@Resource(uri='/employee')
class Employee {
    int employee_id
    String employee_name

    static constraints = {
        employee_id blank:false
    }

    String toString() {
        employee_name
    }
}
