package com.tradeup

import grails.rest.*

@Resource(uri='/employee')
class Employee {
    String name

    static constraints = {
        name blank:false
    }

    String toString() {
        name
    }
}
