terraform {
  cloud {
    organization = "louis-manabat"

    workspaces {
      name = "luis-s3-website-solution"
    }
  }
}