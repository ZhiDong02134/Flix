//
//  MovieDetailViewController.swift
//  Flix
//
//  Created by Danny Dong on 2/18/22.
//

import UIKit
import AlamofireImage

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var backdropView: UIImageView!

    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var synopsisLabel: UILabel!
    var movie: [String:Any]!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let baseUrl = "https://image.tmdb.org/t/p/w780"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)!
        
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        posterView.af.setImage(withURL: posterUrl)
        

        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: baseUrl + backdropPath)!
        backdropView.af.setImage(withURL: backdropUrl)
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        

    }

}
