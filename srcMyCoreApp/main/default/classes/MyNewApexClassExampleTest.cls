@isTest
private class MyNewApexClassExampleTest {
    @isTest
    static void testAddNumbers() {
        // Test case 1: Addition with valid values
        Integer result1 = MyNewApexClassExample.addNumbers(29, 7, 2);
        System.assertEquals(38, result1, 'Addition result should be 36');

        // Test case 2: Addition with negative values
        Integer result2 = MyNewApexClassExample.addNumbers(-3, 8, 2);
        System.assertEquals(7, result2, 'Addition result should be 7');
    }
}