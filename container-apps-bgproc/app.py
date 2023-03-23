import queue
from time import sleep
from azure.storage.queue import QueueClient

STORAGE_ACCOUNT_CONNECTION_STRING = "DefaultEndpointsProtocol=https;EndpointSuffix=core.windows.net;AccountName=bayanstrgacct;AccountKey=HQDWA19GpMAb+gII7JdGHvMQOO1KMJHK0vLiU4fMouPbM7J0orD7w8xTEtaaGLgU0sogxaC1FLyO+ASt/RiR9w==;BlobEndpoint=https://bayanstrgacct.blob.core.windows.net/;FileEndpoint=https://bayanstrgacct.file.core.windows.net/;QueueEndpoint=https://bayanstrgacct.queue.core.windows.net/;TableEndpoint=https://bayanstrgacct.table.core.windows.net/"
queue_name = "aca-session-queue"
queue_client = QueueClient.from_connection_string(STORAGE_ACCOUNT_CONNECTION_STRING, queue_name)



while(True):
   response = queue_client.receive_messages()
   for message in response:
       print(message.content)
       queue_client.delete_message(message.id,message.pop_receipt)
       sleep(1)