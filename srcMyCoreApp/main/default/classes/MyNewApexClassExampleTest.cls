@isTest
private class MyNewApexClassExampleTest {
    @isTest
    static void testAddNumbers() {
        // Test case 1: Addition with valid valuess
        Integer result1 = MyNewApexClassExample.addNumbers(6, 7);
        System.assertEquals(13, result1, 'Addition result should be 13');

        // Test case 2: Addition with negative valuess
        Integer result2 = MyNewApexClassExample.addNumbers(-3, 8);
        System.assertEquals(5, result2, 'Addition result should be 5');
    }
}