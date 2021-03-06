Feature: requirement


Scenario Outline: crear requisito con nombre y descripcion
    Given tengo un proyecto y he creado un requisito con nombre "<nombre>" y descripcion "<descripcion>"
    When veo el nombre y la descripcion del requisito
    Then su nombre es "<nombre>" 
    And su descripcion es "<descripcion>"

	Examples:
		|          nombre            |           descripcion            |
		| un nombre de requerimiento | una descripcion de requerimiento |

Scenario: crear requisito sin prioridad
    Given tengo un proyecto y he creado un requisito sin indicar prioridad
    When veo la prioridad del requisito
    Then su prioridad es indefinida

Scenario: crear requisito con prioridad alta
    Given tengo un proyecto y he creado un requisito con prioridad alta
    When veo la prioridad del requisito
    Then la prioridad es alta

Scenario: crear requisito con prioridad media
    Given tengo un proyecto y he creado un requisito con prioridad media
    When veo la prioridad del requisito
    Then la prioridad es media

Scenario: crear un requisito con prioridad baja
    Given tengo un proyecto y he creado un requisito con prioridad baja
    When veo la prioridad del requisito 
    Then su prioridad es baja

Scenario: modificar prioidad de requisito
    Given tengo un proyecto y tengo un requisito
    When le especifico una nueva prioridad
    And veo la prioridad del requisito
    Then la prioridad es la que le acabo de especificar

Scenario: ver requisitos con prioridad alta
    Given tengo un proyecto con requisitos de distintas prioridades
    When veo los requisitos de prioridad alta
    Then todos los requisitos que veo tienen prioridad alta

Scenario: ver requisitos con prioridad baja
    Given tengo un proyecto con requisitos de distintas prioridades
    When veo los requisitos de prioridad baja
    Then todos los requisitos que veo tienen prioridad baja

Scenario: ver requisitos con prioridad media
    Given tengo un proyecto con requisitos de distintas prioridades
    When veo los requisitos de prioridad media
    Then todos los requisitos que veo tienen prioridad media


Scenario: ver requisitos con prioridad media
    Given tengo un proyecto con requisitos de distintas prioridades
    When veo los requisitos de prioridad media
    Then todos los requisitos que veo tienen prioridad media

Scenario: ver requisitos con prioridad indefinida
    Given tengo un proyecto con requisitos de distintas prioridades
    When veo los requisitos de prioridad indefinida
    Then todos los requisitos que veo tienen prioridad indefinida
