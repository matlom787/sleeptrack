//
//  ViewController.swift
//  sleeptrack
//
//  Created by Mathew Lomelin on 12/5/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var sleepDataPicker: UIDatePicker!
    @IBOutlet weak var wakeDataPicker: UIDatePicker!
    @IBOutlet weak var bonsaiImageView: UIImageView!

    
    
    
    
    
    
    
    // Store growth progress
    var growthProgress: Float = UserDefaults.standard.float(forKey: "growthProgress") // Default: 0.0

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let backgroundImage = UIImage(named: "Image 2 2")//Background Image
        let imageView = UIImageView(image: backgroundImage)
        imageView.contentMode = .scaleAspectFill
        imageView.frame = self.view.bounds // Make it fill the screen
        self.view.insertSubview(imageView, at: 0)
        
        
        
        
        
        resetGrowthProgress()
        
        updateBonsaiTree()
        
        
    }
    @IBAction func saveSleepData(_ sender: UIButton) {
        let sleepTime = sleepDataPicker.date
        let wakeTime = wakeDataPicker.date
        
        // Validate times
        guard wakeTime > sleepTime else {
            showAlert(message: "Wake-up time must be after sleep time.")
            return
        }

        // Calculate sleep duration
        let sleepDuration = wakeTime.timeIntervalSince(sleepTime)
        print("Sleep Duration: \(sleepDuration / 3600) hours") // For debugging
        
        // Save times and grow bonsai tree
        saveSleepRecord(sleep: sleepTime, wake: wakeTime)
        increaseGrowthProgress()
        updateBonsaiTree()
    }

    // Save data locally
    func saveSleepRecord(sleep: Date, wake: Date) {
        // Save times in UserDefaults
        UserDefaults.standard.set(sleep, forKey: "lastSleepTime")
        UserDefaults.standard.set(wake, forKey: "lastWakeTime")
    }

    // Increase bonsai growth progress
    func increaseGrowthProgress() {
        growthProgress += 0.1
        // Increase by 10%
        if growthProgress > 1.0 { growthProgress = 1.0 } // Cap at 100%
        UserDefaults.standard.set(growthProgress, forKey: "growthProgress")
    }
    
    
    func resetGrowthProgress() {
            growthProgress = 0.0  // Reset to first stage
            UserDefaults.standard.set(growthProgress, forKey: "growthProgress")
        }

    // Update bonsai tree image based on growth progress
    func updateBonsaiTree() {
        let imageName: String
        switch growthProgress {
        case 0.0..<0.1: imageName = "Image"
        case 0.1..<0.2: imageName = "Image 2"
        case 0.2..<0.5: imageName = "Image 3"
        case 0.5...1.0: imageName = "Image 4"
        default: imageName = "Image"
        }
        bonsaiImageView.image = UIImage(named: imageName)
    }

    // Show alert for errors
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }

}

