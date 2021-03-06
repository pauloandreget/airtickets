//
//  BaseTableViewController.swift
//  airtickets
//
//  Created by Paulo Rodrigues on 30/12/17.
//  Copyright © 2017 MaxMilhas. All rights reserved.
//

import UIKit
import Localize_Swift

class BaseTableViewController: UITableViewController, BaseTableView {
    
    // MARK: Methods
    
    func showLoading() {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        LoadingSpinner.show("LOADING".localized())
    }
    
    func hideLoading() {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
        LoadingSpinner.hide()
    }
    
    func showNavigationBarAnimated(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func hideNavigationBarAnimated(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    func showMessage(_ message: String?, withTitle title: String?) {
        let errorMessage = message ?? "GENERIC_ERROR_MESSAGE".localized()
        let errorTitle = title ?? "ERROR".localized()
        let errorController = UIAlertController(title: errorTitle, message: errorMessage, preferredStyle: .alert)
        errorController.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(errorController, animated: true, completion: nil)
    }
    
    func showError(_ message: String?) {
        let errorMessage = message ?? "GENERIC_ERROR_MESSAGE".localized()
        let errorController = UIAlertController(title: "TITLE_ERROR".localized(), message: errorMessage, preferredStyle: .alert)
        errorController.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(errorController, animated: true, completion: nil)
    }
    
}

