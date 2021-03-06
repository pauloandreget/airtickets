//
//  ResultsContract.swift
//  airtickets
//
//  Created by Paulo Rodrigues on 31/12/17.
//  Copyright © 2017 MaxMilhas. All rights reserved.
//

import Foundation

protocol ResultsView: BaseTableView {
    func showResults(forFlights flights: [Flight])
}

protocol ResultsPresentation: class {
    func viewDidLoad()
    func sortFare(by order: ComparisonResult)
    func filterAirline(_ name: String)
}

protocol ResultsUseCase: class {
    
}

protocol ResultsInteractorOutput: class {
    
}

protocol ResultsWireframe: class {
    
}
