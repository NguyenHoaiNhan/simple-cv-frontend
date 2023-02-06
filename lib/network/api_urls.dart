/*
 * parameters for the communication 
 * with the server
 */


/*
 *  collection of apis 
 */
class ApiUrls {
  static const environments = {
    "LOCAL": {
      "URL": "https://localhost",
      "PORT": "7177",
    },
    "DEV": {
      "URL": "",
      "PORT": "",
    },
    "PRODUCTION": {
      "URL": "",
      "PORT": "",
    },
  };
  static const target = 'LOCAL';
  static final env = environments[target];
  static final host = "${env!['URL']}";
  static final port = "${env!['PORT']}";

  static Uri linkApiToLogin() => Uri.parse("$host:$port/accounts/login");

  static Uri linkApiToCreateAccount() => Uri.parse("$host:$port/accounts");

  static Uri linkApiToUpdateAccount(String accountId) => Uri.parse("$host:$port/accounts/$accountId");

  static Uri linkApiToGetCVsByAccountId(String accountId) => Uri.parse("$host:$port/cvs/$accountId");

  static Uri linkApiToCreateCV() => Uri.parse("$host:$port/cvs");

  static Uri linkApiToDeleteCV(String cvId) => Uri.parse("$host:$port/cvs/$cvId");

  static Uri linkApiToGetPersonalInfo(String cvId) =>
      Uri.parse("$host:$port/cv-generator/$cvId/personal-info");

  static Uri linkApiToCreatePersonalInfo() => Uri.parse("$host:$port/cv-generator/");

  static Uri linkApiToUpdatePersonalInfo(String cvId) =>
      Uri.parse("$host:$port/cv-generator/$cvId/personal-info");

  static Uri linkApiToGetSkillTypes(String type) => Uri.parse("$host:$port/cv-generator/skill-types/$type");

  static Uri linkApiToGetSkillsOfCV(String cvId, String skillType) =>
      Uri.parse("$host:$port/cv-generator/$cvId/skills-of-cv/$skillType");

  static Uri linkApiToCreateSkillOfCV(String cvId) =>
      Uri.parse("$host:$port/cv-generator/$cvId/skills-of-cv");

  static Uri linkApiToUpdateSkillsOfCV(String cvId, String skillId) =>
      Uri.parse("$host:$port/cv-generator/$cvId/skills-of-cv/$skillId");

  static Uri linkApiToDeleteSkillsOfCV(String cvId, String skillId) =>
      Uri.parse("$host:$port/cv-generator/$cvId/skills-of-cv/$skillId");

  static Uri linkApiToGetActivities(String cvId, String activityType) =>
      Uri.parse("$host:$port/cv-generator/$cvId/activities/$activityType");

  static Uri linkApiToCreateActivities() => Uri.parse("$host:$port/cv-generator/activities");

  static Uri linkApiToGetActivityById(String activityId) =>
      Uri.parse("$host:$port/cv-generator/activities/$activityId");

  static Uri linkApiToUpdateActivities(String activityId) =>
      Uri.parse("$host:$port/cv-generator/$activityId");

  static Uri linkApiToDeleteActivities(String activityId) =>
      Uri.parse("$host:$port/cv-generator/$activityId");
}
