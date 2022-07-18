<p align="center">
  <img alt="compass logo" src="https://user-images.githubusercontent.com/65569815/176964539-fe858838-0d07-418e-9220-b6d94461ecee.png" />
</p>

# 📝Desafio 02

Desafio proposto ao fim da segunda Sprint do **Programa de Bolsas de NodeJS da [Compass.uol](https://compass.uol/)**.

## Cursos concluídos

 - [Introdução ao SQL com MySQL: Manipule e consulte dados](https://cursos.alura.com.br/course/mysql-manipule-dados-com-sql)
 - [Consultas SQL: Avançando no SQL com MySQL](https://cursos.alura.com.br/course/mysql-consultas-sql)
 - [Modelagem de banco de dados: entidades, relacionamentos e atributos](https://www.alura.com.br/curso-online-modelagem-banco-dados-entidades-relacionamentos-atributos)
 - [MongoDB: Uma alternativa aos bancos relacionais tradicionais](https://cursos.alura.com.br/course/mongodb)

## Modelagem dos Dados

### Modelo conceitual construído no programa BrModelo
<kbd>
  <img alt="scrum proccess" src="https://user-images.githubusercontent.com/65569815/179436690-c9a463b4-f509-4986-9de6-8f8533ab9170.png" />
</kbd>

### Modelo conceitual gerado automaticamente pelo MySql Workbench

<kbd>
  <img alt="scrum proccess" src="https://user-images.githubusercontent.com/65569815/179438168-97a78686-fc0c-4467-a793-a787f8170217.PNG" />
</kbd>

## Estrutura do Banco de Dados

### Cleaner Table
|    FieldName   |    Type   | Required | Unique |
|----------------|:---------:|:--------:|:------:|
| `cleaner_id`   | Integer   | true     | true   |
| `cpf`          | Varchar   | true     | true   |
| `name`         | Varchar   | true     | false  |

### Responsible Table
|     FieldName    |    Type   | Required | Unique |
|------------------|:---------:|:--------:|:------:|
| `responsible_id` | Integer   | true     | true   |
| `cpf`            | Varchar   | true     | true   |
| `name`           | Varchar   | true     | false  |

### Size Table
|     FieldName    |    Type   | Required | Unique |
|------------------|:---------:|:--------:|:------:|
| `size_id`        | Integer   | true     | true   |
| `description`    | Varchar   | true     | false  |
| `cleaning_price` | Float     | true     | false  |

### Residence Table
|     FieldName    |    Type   | Required | Unique | Primary Key | Foreign Key |
|------------------|:---------:|:--------:|:------:|:-----------:|:-----------:|
| `residence_id`   | Integer   | true     | true   | true        | false       |
| `city`           | Varchar   | true     | false  | false       | false       |
| `neighborhood`   | Varchar   | true     | false  | false       | false       |
| `street`         | Varchar   | true     | false  | false       | false       |
| `complement`     | Varchar   | false    | false  | false       | false       |
| `size_id`        | Integer   | true     | false  | false       | true        |
| `responsible_id` | Integer   | true     | false  | false       | true        |

### Cleaning Table
|         FieldName        |   Type    | Required | Unique | Primary Key | Foreign Key |
|--------------------------|:---------:|:--------:|:------:|:-----------:|:-----------:|
| `cleaning_id`            | Integer   | true     | true   | true        | false       |
| `scheduled_date`         | Date      | false    | false  | false       | false       |
| `realization_date`       | Date      | false    | false  | false       | false       |
| `must_be_paid`           | Bit       | false    | false  | false       | false       |
| `was_paid`               | Bit       | true     | false  | false       | false       |
| `responsible_evaluation` | Enum      | false    | false  | false       | false       |
| `responsible_feedback`   | Varchar   | false    | false  | false       | false       |
| `cleaner_id`             | Integer   | true     | false  | false       | true        |
| `residence_id`           | Integer   | true     | false  | false       | true        |


