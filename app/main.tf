resource "aws_s3_bucket" "e2e_public" {
  bucket = "cloudlens-e2e-public-fixture"
}
resource "aws_s3_bucket_acl" "e2e_public" {
  bucket = aws_s3_bucket.e2e_public.id
  acl    = "public-read"
}
resource "aws_security_group" "e2e_ssh_world" {
  name = "cloudlens-e2e-ssh-world"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
