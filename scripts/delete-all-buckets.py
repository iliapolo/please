import boto3
import os

resource = boto3.resource('s3')
client = boto3.client('s3')

# boto3.set_stream_logger(name='botocore')

prefix = os.environ['BUCKET_PREFIX']

buckets = client.list_buckets()['Buckets']

for bucket in buckets:
  name = bucket['Name']
  if name.startswith(prefix):

    print(f'Suspending bucket versioning ({name})')
    client.put_bucket_versioning(Bucket=name, VersioningConfiguration={'Status': 'Suspended'})

    print(f'Deleting objects ({name})')
    resource.Bucket(name).object_versions.all().delete()

    print(f'Deleting bucket ({name})')
    client.delete_bucket(Bucket=name)

