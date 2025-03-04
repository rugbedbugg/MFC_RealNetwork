.class public Lorg/fdroid/fdroid/installer/PrivilegedInstaller;
.super Lorg/fdroid/fdroid/installer/Installer;
.source "PrivilegedInstaller.java"


# static fields
.field private static final ACTION_INSTALL_REPLACE_EXISTING:I = 0x2

.field private static final DELETE_FAILED_DEVICE_POLICY_MANAGER:I = -0x2

.field private static final DELETE_FAILED_INTERNAL_ERROR:I = -0x1

.field private static final DELETE_FAILED_OWNER_BLOCKED:I = -0x4

.field private static final DELETE_FAILED_USER_RESTRICTED:I = -0x3

.field private static final DELETE_SUCCEEDED:I = 0x1

.field private static final INSTALL_FAILED_ALREADY_EXISTS:I = -0x1

.field private static final INSTALL_FAILED_CONFLICTING_PROVIDER:I = -0xd

.field private static final INSTALL_FAILED_CONTAINER_ERROR:I = -0x12

.field private static final INSTALL_FAILED_CPU_ABI_INCOMPATIBLE:I = -0x10

.field private static final INSTALL_FAILED_DEXOPT:I = -0xb

.field private static final INSTALL_FAILED_DUPLICATE_PACKAGE:I = -0x5

.field private static final INSTALL_FAILED_DUPLICATE_PERMISSION:I = -0x70

.field private static final INSTALL_FAILED_INSUFFICIENT_STORAGE:I = -0x4

.field private static final INSTALL_FAILED_INTERNAL_ERROR:I = -0x6e

.field private static final INSTALL_FAILED_INVALID_APK:I = -0x2

.field private static final INSTALL_FAILED_INVALID_INSTALL_LOCATION:I = -0x13

.field private static final INSTALL_FAILED_INVALID_URI:I = -0x3

.field private static final INSTALL_FAILED_MEDIA_UNAVAILABLE:I = -0x14

.field private static final INSTALL_FAILED_MISSING_FEATURE:I = -0x11

.field private static final INSTALL_FAILED_MISSING_SHARED_LIBRARY:I = -0x9

.field private static final INSTALL_FAILED_NEWER_SDK:I = -0xe

.field private static final INSTALL_FAILED_NO_MATCHING_ABIS:I = -0x71

.field private static final INSTALL_FAILED_NO_SHARED_USER:I = -0x6

.field private static final INSTALL_FAILED_OLDER_SDK:I = -0xc

.field private static final INSTALL_FAILED_PACKAGE_CHANGED:I = -0x17

.field private static final INSTALL_FAILED_REPLACE_COULDNT_DELETE:I = -0xa

.field private static final INSTALL_FAILED_SHARED_USER_INCOMPATIBLE:I = -0x8

.field private static final INSTALL_FAILED_TEST_ONLY:I = -0xf

.field private static final INSTALL_FAILED_UID_CHANGED:I = -0x18

.field private static final INSTALL_FAILED_UPDATE_INCOMPATIBLE:I = -0x7

.field private static final INSTALL_FAILED_USER_RESTRICTED:I = -0x6f

.field private static final INSTALL_FAILED_VERIFICATION_FAILURE:I = -0x16

.field private static final INSTALL_FAILED_VERIFICATION_TIMEOUT:I = -0x15

.field private static final INSTALL_FAILED_VERSION_DOWNGRADE:I = -0x19

.field private static final INSTALL_PARSE_FAILED_BAD_MANIFEST:I = -0x65

.field private static final INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME:I = -0x6a

.field private static final INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID:I = -0x6b

.field private static final INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING:I = -0x69

.field private static final INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES:I = -0x68

.field private static final INSTALL_PARSE_FAILED_MANIFEST_EMPTY:I = -0x6d

.field private static final INSTALL_PARSE_FAILED_MANIFEST_MALFORMED:I = -0x6c

.field private static final INSTALL_PARSE_FAILED_NOT_APK:I = -0x64

.field private static final INSTALL_PARSE_FAILED_NO_CERTIFICATES:I = -0x67

.field private static final INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION:I = -0x66

.field private static final INSTALL_RETURN_CODES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTALL_SUCCEEDED:I = 0x1

.field private static final IS_EXTENSION_INSTALLED_NO:I = 0x0

.field private static final IS_EXTENSION_INSTALLED_SIGNATURE_PROBLEM:I = 0x2

.field public static final IS_EXTENSION_INSTALLED_YES:I = 0x1

.field public static final PRIVILEGED_EXTENSION_PACKAGE_NAME:Ljava/lang/String; = "org.fdroid.fdroid.privileged"

.field private static final PRIVILEGED_EXTENSION_SERVICE_INTENT:Ljava/lang/String; = "org.fdroid.fdroid.privileged.IPrivilegedService"

.field private static final TAG:Ljava/lang/String; = "PrivilegedInstaller"

.field private static final UNINSTALL_RETURN_CODES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTALL_RETURN_CODES()Ljava/util/HashMap;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/fdroid/installer/PrivilegedInstaller;->INSTALL_RETURN_CODES:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetUNINSTALL_RETURN_CODES()Ljava/util/HashMap;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/fdroid/installer/PrivilegedInstaller;->UNINSTALL_RETURN_CODES:Ljava/util/HashMap;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/fdroid/fdroid/installer/PrivilegedInstaller;->INSTALL_RETURN_CODES:Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Success"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, -0x1

    .line 134
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Package is already installed."

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, -0x2

    .line 136
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "The package archive file is invalid."

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, -0x3

    .line 138
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "The URI passed in is invalid."

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, -0x4

    .line 140
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "The package manager service found that the device didn\'t have enough storage space to install the app."

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, -0x5

    .line 143
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "A package is already installed with the same name."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, -0x6

    .line 145
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The requested shared user does not exist."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, -0x7

    .line 147
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "A previously installed package of the same name has a different signature than the new package (and the old package\'s data was not removed)."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, -0x8

    .line 150
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The new package has requested a shared user which is already installed on the device and does not have matching signature."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x9

    .line 153
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The new package uses a shared library that is not available."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0xa

    .line 155
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Unknown"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0xb

    .line 157
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The package failed while optimizing and validating its dex files, either because there was not enough storage or the validation failed."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0xc

    .line 160
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The new package failed because the current SDK version is older than that required by the package."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0xd

    .line 163
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The new package failed because it contains a content provider with the same authority as a provider already installed in the system."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0xe

    .line 166
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The new package failed because the current SDK version is newer than that required by the package."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0xf

    .line 169
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The new package failed because it has specified that it is a test-only package and the caller has not supplied the {@link #INSTALL_ALLOW_TEST} flag."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x10

    .line 172
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The package being installed contains native code, but none that is compatible with the device\'s CPU_ABI."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x11

    .line 175
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The new package uses a feature that is not available."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x12

    .line 177
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "A secure container mount point couldn\'t be accessed on external media."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x13

    .line 179
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The new package couldn\'t be installed in the specified install location."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x14

    .line 181
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The new package couldn\'t be installed in the specified install location because the media is not available."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x15

    .line 184
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The new package couldn\'t be installed because the verification timed out."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x16

    .line 186
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The new package couldn\'t be installed because the verification did not succeed."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x17

    .line 188
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The package changed from what the calling program expected."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x18

    .line 190
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The new package is assigned a different UID than it previously held."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x19

    .line 192
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The new package has an older version code than the currently installed package."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x64

    .line 194
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The parser was given a path that is not a file, or does not end with the expected \'.apk\' extension."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x65

    .line 197
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "the parser was unable to retrieve the AndroidManifest.xml file."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x66

    .line 199
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The parser encountered an unexpected exception."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x67

    .line 201
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The parser did not find any certificates in the .apk."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x68

    .line 203
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The parser found inconsistent certificates on the files in the .apk."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x69

    .line 205
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The parser encountered a CertificateEncodingException in one of the files in the .apk."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x6a

    .line 208
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The parser encountered a bad or missing package name in the manifest."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x6b

    .line 210
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The parser encountered a bad shared user id name in the manifest."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x6c

    .line 212
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The parser encountered some structural problem in the manifest."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x6d

    .line 214
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The parser did not find any actionable tags (instrumentation or application) in the manifest."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x6e

    .line 217
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The system failed to install the package because of system issues."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x6f

    .line 219
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The system failed to install the package because the user is restricted from installing apps."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x70

    .line 222
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The system failed to install the package because it is attempting to define a permission that is already defined by some existing package."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, -0x71

    .line 225
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "The system failed to install the package because its packaged native code did not match any of the ABIs supported by the system."

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/fdroid/fdroid/installer/PrivilegedInstaller;->UNINSTALL_RETURN_CODES:Ljava/util/HashMap;

    .line 241
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, " the system failed to delete the package for an unspecified reason."

    .line 243
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "the system failed to delete the package because it is the active DevicePolicy manager."

    .line 245
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "the system failed to delete the package since the user is restricted."

    .line 248
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "the system failed to delete the package because a profile or device owner has marked the package as uninstallable."

    .line 250
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1, p2, p3}, Lorg/fdroid/fdroid/installer/Installer;-><init>(Landroid/content/Context;Lorg/fdroid/fdroid/data/App;Lorg/fdroid/fdroid/data/Apk;)V

    return-void
.end method

.method public static isDefault(Landroid/content/Context;)Z
    .locals 1

    .line 301
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/Preferences;->isPrivilegedInstallerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-static {p0}, Lorg/fdroid/fdroid/installer/PrivilegedInstaller;->isExtensionInstalledCorrectly(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isExtensionInstalled(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "org.fdroid.fdroid.privileged"

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 262
    :try_start_0
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 263
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method public static isExtensionInstalledCorrectly(Landroid/content/Context;)I
    .locals 3

    .line 271
    invoke-static {p0}, Lorg/fdroid/fdroid/installer/PrivilegedInstaller;->isExtensionInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 275
    :cond_0
    new-instance v0, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$1;

    invoke-direct {v0}, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$1;-><init>()V

    .line 282
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.fdroid.fdroid.privileged.IPrivilegedService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "org.fdroid.fdroid.privileged"

    .line 283
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    const-string v0, "PrivilegedInstaller"

    const-string v1, "IS_EXTENSION_INSTALLED_SIGNATURE_PROBLEM"

    .line 290
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x2

    return p0
.end method


# virtual methods
.method protected installPackageInternal(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2

    .line 307
    new-instance v0, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2;

    invoke-direct {v0, p0, p2, p1}, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$2;-><init>(Lorg/fdroid/fdroid/installer/PrivilegedInstaller;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 345
    new-instance p1, Landroid/content/Intent;

    const-string p2, "org.fdroid.fdroid.privileged.IPrivilegedService"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "org.fdroid.fdroid.privileged"

    .line 346
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    .line 347
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method protected isUnattended()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method protected uninstallPackage()V
    .locals 4

    .line 353
    new-instance v0, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$3;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/installer/PrivilegedInstaller$3;-><init>(Lorg/fdroid/fdroid/installer/PrivilegedInstaller;)V

    .line 390
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.fdroid.fdroid.privileged.IPrivilegedService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "org.fdroid.fdroid.privileged"

    .line 391
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lorg/fdroid/fdroid/installer/Installer;->context:Landroid/content/Context;

    .line 392
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
