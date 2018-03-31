package com.tradeup

import grails.rest.*

@Resource(uri='/holidays')
class PublicHoliday {
    BigInteger id
    String name
    Date start
    Date end
    String country
    String region

    static constraints = {
        id blank: false
    }

    String toString() {
        name
    }
}
