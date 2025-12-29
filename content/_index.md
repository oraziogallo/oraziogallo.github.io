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
---
