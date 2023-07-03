<?php
class Worker {
  private $name;
  private $age;
  private $salary;

  public function setName($name) {
    $this->name = $name;
  }
  public function getName() {
    return $this->name;
  }

  public function setAge($age) {
    $this->age = $age;
  }
  public function getAge() {
    return $this->age;
  }
  public function setSalary($salary) {
    $this->salary = $salary;
  }
  public function getSalary() {
    return $this->salary;
  }
}

$ivan = new Worker();

$ivan->setName('Ivan');
$ivan->setAge(25);
$ivan->setSalary(1000);

$vasya = new Worker();

$vasya->setName('Vasya');
$vasya->setAge(26);
$vasya->setSalary(2000);

echo "Сумма зарплат ивана и васи: " .  $ivan->getSalary() + $vasya->getSalary();
echo '<br>';
echo "Сумма возрастов ивана и васи: " .  $ivan->getAge() + $vasya->getAge();
?>