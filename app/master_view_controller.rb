class MasterViewController < UIViewController
  def viewDidLoad
    super

    self.view.backgroundColor = UIColor.whiteColor

    button = UIButton.buttonWithType(UIButtonTypeCustom)
    button.frame = [[100.0, 220.0], [100.0, 50.0]]
    button.setTitle("Open map", forState:UIControlStateNormal)
    button.setTitleColor(UIColor.blackColor, forState:UIControlStateNormal)
    button.font = UIFont.systemFontOfSize(16.0)

    button.addTarget(self, action:"openMap", forControlEvents:UIControlEventTouchUpInside)

    self.view.addSubview(button)
  end

  def openMap
    self.navigationController.push(MapViewController.alloc.init)
  end
end
