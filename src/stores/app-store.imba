
export class AppStore
	prop windows
	prop icons
	prop programs
	prop backgroundUrl
	prop theme
	prop isStartOpen


	def initialize
		@windows = []
		@icons = []
		@programs = [1,2,3,4,5]
		@backgroundUrl = "https://source.unsplash.com/daily?ar=2:1"
		@theme = 'dark'
		@isStartOpen = false

		self.initFromStorage
	
	def initFromStorage
		# TODO: get localStorage information and restore previous state

	def saveSaveToLocal
		# TODO: save store into localStorage

