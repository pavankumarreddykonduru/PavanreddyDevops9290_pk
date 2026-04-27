variable "filename" {
  # type    = set(string) # set must be unique #
  type = list(string)
  default = [
             "C:\\Devops\\PavanreddyDevops9290_pk\\pets.txt",
             "C:\\Devops\\PavanreddyDevops9290_pk\\dogs.txt",
             "C:\\Devops\\PavanreddyDevops9290_pk\\cats.txt",
             "C:\\Devops\\PavanreddyDevops9290_pk\\cows.txt",
             "C:\\Devops\\PavanreddyDevops9290_pk\\tiger.txt"
  ]

}