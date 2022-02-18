import UIKit
import AVFoundation



class ViewController: UIViewController {
    var player: AVAudioPlayer!
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        sender.alpha = 0.5
        playSound(soundName: sender.currentTitle!)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2){
            sender.alpha = 1
        }
        
    }
    //optional String ? !
    func playSound(soundName: String){
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
}
 
