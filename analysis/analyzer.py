import csv
import ast
import datetime


from db.postgres_connector import PostgresConnector

class Analyzer:
	def __init__(self):
		self.db = PostgresConnector('mydatabase', 'myuser', 'mypassword')

	def get_action_log(self):
		res = self.db.fetch("select * from public.dbot_action_log where log_timestamp::DATE > (now()::DATE - 1)")
		return res

	def get_location_log(self):
		res = self.db.fetch("select * from public.dbot_location_log where log_timestamp::DATE > (now()::DATE - 1)")
		return res

	def print_res(self, res):
		for row in res:
			print(row)

	def write_action_csv(self, data):
		with open('output_action.csv', 'w', newline='') as file:
			writer = csv.writer(file)
			writer.writerow(['id', 'bot_id', 'info', 'error_msg', 'action_id', 'log_timestamp', 'bot_location'])
			for row in data:
				if (row[6]):
					writer.writerow([row[0], row[1], row[2], row[3], row[4], row[5], row[6]['x'], row[6]['y'], row[6]['z']])
				else:
					writer.writerow([row[0], row[1], row[2], row[3], row[4], row[5], row[6]])

	def write_location_csv(self, data):
		with open('output_location.csv', 'w', newline='') as file:
			writer = csv.writer(file)
			writer.writerow(['id', 'bot_id', 'info', 'error_msg', 'action_id', 'log_timestamp', 'bot_location'])
			for row in data:
				if (row[5]):
					writer.writerow([row[0], row[1], row[2], row[3], row[5], row[4]['x'], row[4]['y'], row[4]['z']])
				else:
					writer.writerow([row[0], row[1], row[2], row[3], row[5], row[4]])

if __name__ == '__main__':
	analyzer = Analyzer()
	res = analyzer.get_location_log()
	analyzer.write_location_csv(res)
