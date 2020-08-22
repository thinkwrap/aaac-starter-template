###################################################################
# Variables
###################################################################

variable "tags" {
  description = "Tags applied to created resources"
  type        = map(string)
  default     = {}
}