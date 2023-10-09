//
//  PostInfoCell.swift
//  InstagramPost
//
//  Created by Pedro Thomas on 10/9/23.
//

import UIKit

class PostInfoCell: UITableViewCell {
  
  let profileImage = UIImageView()
  let profileName = UILabel()
  let imagePost = UIImageView()
  let heartButton = UIButton()
  let commentButton = UIButton()
  let shareButton = UIButton()
  let bookmarkButton = UIButton()

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    setupProfileImage()
    setupProfileName()
    setupImagePost()
    setupHeartButton()
    setupCommentButton()
    setupShareButton()
    setupBookmarkButton()
    setupConstraints()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func setupProfileImage() {
    addSubview(profileImage)
    profileImage.translatesAutoresizingMaskIntoConstraints = false
    profileImage.image = UIImage(named: "Placeholder")
    profileImage.layer.cornerRadius = 20
    profileImage.clipsToBounds = true
  }
  
  func setupProfileName() {
    addSubview(profileName)
    profileName.translatesAutoresizingMaskIntoConstraints = false
    profileName.text = "UserName123"
  }
  
  func setupImagePost() {
    addSubview(imagePost)
    imagePost.translatesAutoresizingMaskIntoConstraints = false
    imagePost.image = UIImage(named: "Placeholder")
  }
  
  func setupHeartButton() {
    addSubview(heartButton)
    heartButton.translatesAutoresizingMaskIntoConstraints = false
    heartButton.setImage(UIImage(systemName: "heart"), for: .normal)
  }
  
  func setupCommentButton() {
    addSubview(commentButton)
    commentButton.translatesAutoresizingMaskIntoConstraints = false
    commentButton.setImage(UIImage(systemName: "bubble.right"), for: .normal)
  }
  
  func setupShareButton() {
    addSubview(shareButton)
    shareButton.translatesAutoresizingMaskIntoConstraints = false
    shareButton.setImage(UIImage(systemName: "paperplane"), for: .normal)
  }
  
  func setupBookmarkButton() {
    addSubview(bookmarkButton)
    bookmarkButton.translatesAutoresizingMaskIntoConstraints = false
    bookmarkButton.setImage(UIImage(systemName: "bookmark"), for: .normal)
  }
  
  func setupConstraints() {
    NSLayoutConstraint.activate([
      profileImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
      profileImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
      profileImage.widthAnchor.constraint(equalToConstant: 30),
      profileImage.heightAnchor.constraint(equalToConstant: 30)
    ])
    
    NSLayoutConstraint.activate([
      profileName.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 7),
      profileName.topAnchor.constraint(equalTo: self.topAnchor, constant: 10)
    ])
    
    NSLayoutConstraint.activate([
      imagePost.topAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: 10),
      imagePost.leadingAnchor.constraint(equalTo: self.leadingAnchor),
      imagePost.trailingAnchor.constraint(equalTo: self.trailingAnchor),
      imagePost.widthAnchor.constraint(equalToConstant: 275),
      imagePost.heightAnchor.constraint(equalToConstant: 400),
    ])
    
    NSLayoutConstraint.activate([
      heartButton.topAnchor.constraint(equalTo: imagePost.bottomAnchor, constant: 5),
      heartButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5)
    ])
   
    NSLayoutConstraint.activate([
      commentButton.topAnchor.constraint(equalTo: imagePost.bottomAnchor, constant: 5),
      commentButton.leadingAnchor.constraint(equalTo: heartButton.trailingAnchor, constant: 5),
    ])
    
    NSLayoutConstraint.activate([
      shareButton.topAnchor.constraint(equalTo: imagePost.bottomAnchor, constant: 5),
      shareButton.leadingAnchor.constraint(equalTo: commentButton.trailingAnchor, constant: 5),
    ])
    
    NSLayoutConstraint.activate([
      bookmarkButton.topAnchor.constraint(equalTo: imagePost.bottomAnchor, constant: 5),
      bookmarkButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5)
    ])
  }
}
