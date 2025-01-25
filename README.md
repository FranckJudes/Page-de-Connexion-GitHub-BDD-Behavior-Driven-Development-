
# Projet de Test : Page de Connexion GitHub BDD (Behavior-Driven Development)

## Description
Ce projet utilise **Behave**, un framework BDD (Behavior-Driven Development), et **Selenium WebDriver** pour automatiser les tests de la page de connexion GitHub. Les tests couvrent différents scénarios, notamment les connexions réussies, les échecs dus à des informations incorrectes ou manquantes, ainsi que le comportement des champs de formulaire.

## Fonctionnalités
- Automatisation de la page de connexion GitHub.
- Vérification des messages d'erreur pour les cas d'échec.
- Validation des formulaires non soumis dans des conditions invalides.
- Tests pour les scénarios de connexion avec des mots de passe ou noms d'utilisateur incorrects, vides ou contenant des caractères spéciaux.

## Prérequis
Avant d'exécuter ce projet, assurez-vous que les outils suivants sont installés sur votre machine :
- **Python 3.7+**
- **Selenium WebDriver**
- **Behave**
- **Google Chrome** et le **ChromeDriver** correspondant à votre version de Chrome.

## Installation
1. Clonez ce dépôt :
   ```bash
   git clone https://github.com/FranckJudes/Page-de-Connexion-GitHub-BDD-Behavior-Driven-Development-.git
   cd Page-de-Connexion-GitHub-BDD-Behavior-Driven-Development-
   ```
2. Créez un environnement virtuel et activez-le :
   ```bash
   python3 -m venv env
   source env/bin/activate # Sur Linux/MacOS
   env\Scripts\activate    # Sur Windows
   ```
3. Installez les dépendances :
   ```bash
   pip install behave
   ```
4. Vérifiez que ChromeDriver est installé et ajoutez son chemin au fichier `context` si nécessaire :
   ```python
   context.chrome_driver_path = "/path/to/chromedriver"
   ```

## Structure du Projet
- **`features/`** : Contient les fichiers de spécifications BDD.
  - **`github_login.feature`** : Scénarios de test écrits en Gherkin.
- **`features/steps/`** : Contient les étapes implémentées en Python pour les tests BDD.
  - **`test_github_login_steps.py`** : Script Python contenant les implémentations des étapes.
- **`reports/`** : Contient les rapports de test et les captures d'écran des scénarios échoués.

## Scénarios de Test
Les scénarios testés incluent :
1. **Connexion réussie avec des identifiants valides.**
2. **Échec avec un mot de passe incorrect.**
3. **Échec avec un nom d'utilisateur inexistant.**
4. **Formulaire non soumis avec un nom d'utilisateur ou mot de passe vide.**
5. **Échec avec un mot de passe contenant des caractères spéciaux.**
6. **Échec avec des mots de passe trop courts ou trop longs.**

## Exécution des Tests
Pour exécuter les tests, utilisez la commande suivante dans le terminal :
```bash
behave
```

### Résultats
Les résultats s'afficheront dans la console. Les captures d'écran des échecs (si disponibles) seront stockées dans `reports/screenshots/`.

## Personnalisation
- **Modifier les scénarios** : Mettez à jour ou ajoutez des scénarios dans `features/github_login.feature`.
- **Adapter les chemins** : Mettez à jour le chemin vers `chromedriver` dans la configuration.

## Contributions
Les contributions sont les bienvenues ! Pour contribuer :
1. Forkez ce dépôt.
2. Créez une branche pour vos modifications :
   ```bash
   git checkout -b feature/nom-de-la-feature
   ```
3. Faites vos modifications et soumettez une pull request.

## Auteur
- **Votre FranckJudes**  
- **Contact** : [franckjudes87@gmail.com](mailto:franckjudes87@gmail.com)

---

Si vous souhaitez des ajouts ou des modifications, faites-le-moi savoir ! 😊