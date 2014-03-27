class MapViewController < UIViewController
  def viewDidLoad
    self.view.backgroundColor = UIColor.whiteColor

    camera = GMSCameraPosition.cameraWithLatitude(0.0,
                                        longitude:0.0,
                                             zoom:12)

    @mapView = GMSMapView.alloc.initWithFrame(self.view.frame.dup)
    @mapView.camera = camera

    self.view.addSubview(@mapView)
  end
end
