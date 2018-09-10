import Cocoa

@NSApplicationMain
class AppDelegate : NSObject, NSApplicationDelegate {
    
    @IBOutlet weak var window: NSWindow!
    
    @IBOutlet weak var display: NSTextField!
    
    func applicationDidFinishLaunching(_ aNotification: NSNotification) {
        // Insert code here to initialize your application
    }
    
    func applicationWillTerminate(_ aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
    @IBAction func clickDigit(_ sender: NSButton) {
        let digit: Int = sender.tag
        
        display.stringValue += "\(digit)"
    }
    
    @IBAction func clickClear(_ sender: Any) {
        display.stringValue = ""
    }
    
    @IBAction func clickDivide(_ sender: NSButton) {
        display.stringValue += "/"
    }
    
    @IBAction func clickMultiply(_ sender: NSButton) {
        display.stringValue += "*"
    }
    
    @IBAction func clickAdd(_ sender: NSButton) {
        display.stringValue += "+"
    }
    
    @IBAction func clickSubtract(_ sender: NSButton) {
        display.stringValue += "-"
    }
    
    @IBAction func clickEquals(_ sender: NSButton) {
        if let result = Parser<Fraction>.evaluate(string: display.stringValue) {
            display.stringValue += "=\(result)"
        } else {
            display.stringValue = "Error"
        }
        
    }
    
    
}
