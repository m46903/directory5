resource "aws_ebs_volume" "indexer-ebs" {
  availability_zone = "us-east-1a"
  count             = 3
  size              = 200
  type              = "gp2"
  tags = {
    Name = "Indexer"
  }
}

resource "aws_volume_attachment" "indexer-ebs-attach" {
  count       = 3
  device_name = "/dev/sdd"
  volume_id   = element(aws_ebs_volume.indexer-ebs.*.id, count.index)
  instance_id = element(aws_instance.indexer.*.id, count.index)
}

resource "aws_ebs_volume" "search-head-ebs" {
  availability_zone = "us-east-1a"
  size              = 200
  type              = "gp2"
  tags = {
    Name = "search-head"
  }
}

resource "aws_ebs_volume" "cluster-master-ebs" {
  availability_zone = "us-east-1a"
  size              = 200
  type              = "gp2"
  tags = {
    Name = "cluster-master"
  }
}

resource "aws_volume_attachment" "serach_head-ebs-attach" {
  device_name = "/dev/sdd"
  volume_id   = aws_ebs_volume.search-head-ebs.id
  instance_id = aws_instance.search_head.id
}

resource "aws_volume_attachment" "cluster_master-ebs-attach" {
  device_name = "/dev/sdd"
  volume_id   = aws_ebs_volume.cluster-master-ebs.id
  instance_id = aws_instance.cluster_master.id
}