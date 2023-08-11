import requests
url = "https://httpbin.org/post"
payload = {}
files=[
  ('',
  ('sample_dir.log',
  open(r'C:/Users/nanja/Desktop/sample_dir.log','rb'), # provide a valid file path within your machine
  'application/octet-stream')
  )
]
headers = {}
response = requests.request("POST", url, headers=headers, data=payload, files=files)
print(response.text)
# open(r"\\remote_machine\folder1\filename.ext")
