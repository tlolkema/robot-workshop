class RobotFrameworkWorkshop:
    
    ROBOT_FRAMEWORK_WORKSHOP = 'AWESOME'
        
    def exercise_1(self):
        '''Use SeleniumLibrary to fill in the form on this page, submit and validate'''
        return 'Succes!'

    def exercise_2(self):
        '''
        Run the STARTUP keyword before every test
        Run the TEARDOWN keyword after the suite
        '''
        return 'Succes!'
    
    def exercise_3(self):
        '''
        Use WorkshopLibrary to make POST call to "/robotframework" with WorkShopLibrary
        Validate the response
        '''
        return 'Succes!'

    def bonus_exercise(self):
        '''
        Use Pabot to test the testcases in parrallel
        https://github.com/mkorpela/pabot
        '''
        participant = 'Robot Framework Professional'
        return participant
        
    def bonus_exercise_2(self):
        '''
        Make a data driven test using a testtemplate
        '''
        participant = 'Robot Framework Senior Master'
        return participant