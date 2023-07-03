<?php
class Worker {
  private $name;
  private $age;
  private $salary;

  public function __construct($name, $age, $salary)
  {
    $this->setName($name);
    $this->setAge($age);
    $this->setSalary($salary); 
  }

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

$ivan = new Worker('Ivan', 25, 1000);

$vasya = new Worker('Vasya', 26, 2000);

echo "Сумма зарплат ивана и васи: " .  $ivan->getSalary() + $vasya->getSalary();
echo '<br>';
echo "Сумма возрастов ивана и васи: " .  $ivan->getAge() + $vasya->getAge();
?>