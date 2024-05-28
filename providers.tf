terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "storageaccountnameravi"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
  required_version = ">= 1.1.0"
}