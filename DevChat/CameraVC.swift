//
//  ViewController.swift
//  DevChat
//
//  Created by Mago Nicolas Palacios on 8/18/16.
//  Copyright © 2016 Mago Nicolas Palacios. All rights reserved.
//

import UIKit
import FirebaseAuth

class CameraVC: AAPLCameraViewController, AAPLCameraVCDelegate {

    @IBOutlet weak var previewView: AAPLPreviewView!
    @IBOutlet weak var cameraBtn: UIButton!
    
    @IBOutlet weak var recordBtn: UIButton!
    override func viewDidLoad() {
        
        delegate = self
        _previewView = previewView
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        guard FIRAuth.auth()?.currentUser != nil else {
            // Load login VC
            performSegue(withIdentifier: "loginVC", sender: nil)
            return
        }
    }


    @IBAction func recordBtnPressed(_ sender: AnyObject)
    {
        toggleMovieRecording()
    }

    @IBAction func changeCameraBtnPressed(_ sender: AnyObject)
    {
        changeCamera()
    }
    
    func shouldEnableCameraUI(_ enable: Bool) {
        cameraBtn.isEnabled = enable
    }
    
    func shouldEnableRecordUI(_ enable: Bool) {
        recordBtn.isEnabled = enable
    }
    
    func recordingHasStarted() {
        print("Recording has started")
    }
    
    func canStartRecording() {
        print("Can start recording")
    }
    
    
}

