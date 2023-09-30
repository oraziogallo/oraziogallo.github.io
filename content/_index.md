---
# Leave the homepage title empty to use the site title
title: "Orazio Gallo's Personal Page"
date: 2022-10-24
type: landing

sections:
  - block: about.biography
    id: about
    content:
      title: 
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: orazio-gallo
  # - block: collection
  #   id: news
  #   content:
  #     title: News
  #     filters:
  #       folders:
  #         - news
  #   design:
  #     columns: '2'
  #     view: compact
  # - block: collection
  #   id: talks
  #   content:
  #     title: Recorded Talks
  #     filters:
  #       folders:
  #         - event
  #   design:
  #     columns: '2'
  #     view: compact
  # - block: collection
  #   id: featured
  #   content:
  #     title: Featured Publications
  #     filters:
  #       folders:
  #         - publication
  #       featured_only: true
  #   design:
  #     columns: '2'
  #     view: card
  - block: collection
    id: publications
    content:
      title: Publications
      text: |-
        {{% callout note %}}
        Quickly discover relevant content by [filtering publications](./publication/).
        {{% /callout %}}
      filters:
        folders:
          - publication
        exclude_featured: true
    design:
      columns: '2'
      view: citation
  - block: markdown
    content:
      title: Professional Service Awards
      subtitle: ''
      # TODO: move the actual text to a different file, so that content doesn't live here
      text: "
      * Outstanding Reviewer Award BMVC 2021
      
      * Outstanding Reviewer Award ICCV 2021
      
      * Outstanding Reviewer Award CVPR 2021
      
      * Outstanding Editorial Board Member Award IEEE Trans. on Comp. Imaging 2020
      
      * Outstanding Reviewer Award CVPR 2018
      
      * Outstanding Reviewer Award CVPR 2017
      "
      
    design:
      columns: '2'
  - block: markdown
    content:
      title: Previous Interns
      subtitle: ''
      # TODO: move the actual text to a different file, so that content doesn't live here
      text: "Over the years, I've been extremely lucky to collaborate with a number of students now off to doing amazing things on their own, with some working with me at NVIDIA! Here's a few:
      David E. Jacobs, Jun Hu, Felix Heide, Hang Zhao, Abhishek Badki, Huaijin (George) Chen, Suren Jayasuriya, Qi Guo, Patrick Wieschollek, Zhile Ren, Hang Su, Wei-Sheng (Jason) Lai, Inchang Choi, Jae Shin Yoon, Tewodros Habtegebrial, Ekta Prashnani, Chaoyang Wang, Atsuhiro Noguchi."
    design:
      columns: '1'
---
