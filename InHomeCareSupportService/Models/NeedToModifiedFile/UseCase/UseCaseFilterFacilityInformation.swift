//
//  CSVConversion.swift
//  CoreLocationSample
//
//  Created by 村中令 on 2022/05/05.
//

import Foundation

struct UseCaseFilterFacilityInformation {
    static func filterFacilityInformationFromDataBase(filterServiceType: FilterServiceType) -> [FacilityInformation] {
        var facilityInformations: [FacilityInformation] = []
        switch filterServiceType {
        case .inHomeCareSupportService :
            facilityInformations =
            CsvConversion.convertFacilityInformationFromCsv(
                serviceType: .inHomeCareSupportService
            )
        }
        return facilityInformations
    }
}
