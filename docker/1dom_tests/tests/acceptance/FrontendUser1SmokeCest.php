<?php

class FrontendUser1SmokeCest {

    public function _before(AcceptanceTester $I) {
        
    }

    public function User1Login(AcceptanceTester $I) {
        $I->amOnPage('/');
        $I->see('Войти в кабинет');     
        $I->click('Войти в кабинет');
        $I->see('Вход в личный кабинет');
        $I->fillField('Email', '*******');
        $I->fillField('#loginform-password', '*******');
        $I->click('login-button');
        $I->see('Мои заказы');

    //     Logout
        $I->see('Выйти');
        $I->click('#logout-btn');
        $I->see('Войти в кабинет');
    }  

}