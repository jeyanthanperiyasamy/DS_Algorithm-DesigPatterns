import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.stack()
        self.factoryPattern()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func factoryPattern() {
        let factoryPattern = FactoryPattern()
        let colorTouch = factoryPattern.composeSensiProduct(type: .colorTouch)
        print(colorTouch.hasCWire())
        let sensiPlus = factoryPattern.composeSensiProduct(type: .sensiPlus)
        print(sensiPlus.hasCWire())
    }
    
    func stack() {
        var stack = Stack<Int>()
        stack.push(value: 40)
        stack.push(value: 80)
        stack.push(value: 100)
        print(stack)
        print(stack.pop() ?? 0)
        print(stack.top() ?? 0)
        
    }

}

