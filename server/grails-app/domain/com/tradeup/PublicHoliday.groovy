package com.tradeup

import grails.rest.*

@Resource(uri='/holidays')
class PublicHoliday {
    String name
    Date start
    Date end
    String country
    String region

    static constraints = {
        name blank: false
        start blank: false
        end blank: false
        country blank: false
        region blank: false
    }

    String toString() {
        name
    }
}
