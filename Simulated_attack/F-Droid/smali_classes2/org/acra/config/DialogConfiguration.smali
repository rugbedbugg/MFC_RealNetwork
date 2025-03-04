.class public final Lorg/acra/config/DialogConfiguration;
.super Ljava/lang/Object;
.source "DialogConfiguration.kt"

# interfaces
.implements Lorg/acra/config/Configuration;


# instance fields
.field private final commentPrompt:Ljava/lang/String;

.field private final emailPrompt:Ljava/lang/String;

.field private final enabled:Z

.field private final negativeButtonText:Ljava/lang/String;

.field private final positiveButtonText:Ljava/lang/String;

.field private final reportDialogClass:Ljava/lang/Class;

.field private final resIcon:Ljava/lang/Integer;

.field private final resTheme:Ljava/lang/Integer;

.field private final text:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3ff

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lorg/acra/config/DialogConfiguration;-><init>(ZLjava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "reportDialogClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/acra/config/DialogConfiguration;->enabled:Z

    iput-object p2, p0, Lorg/acra/config/DialogConfiguration;->reportDialogClass:Ljava/lang/Class;

    iput-object p3, p0, Lorg/acra/config/DialogConfiguration;->positiveButtonText:Ljava/lang/String;

    iput-object p4, p0, Lorg/acra/config/DialogConfiguration;->negativeButtonText:Ljava/lang/String;

    iput-object p5, p0, Lorg/acra/config/DialogConfiguration;->commentPrompt:Ljava/lang/String;

    iput-object p6, p0, Lorg/acra/config/DialogConfiguration;->emailPrompt:Ljava/lang/String;

    iput-object p7, p0, Lorg/acra/config/DialogConfiguration;->resIcon:Ljava/lang/Integer;

    iput-object p8, p0, Lorg/acra/config/DialogConfiguration;->text:Ljava/lang/String;

    iput-object p9, p0, Lorg/acra/config/DialogConfiguration;->title:Ljava/lang/String;

    iput-object p10, p0, Lorg/acra/config/DialogConfiguration;->resTheme:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    const-class v2, Lorg/acra/dialog/CrashReportDialog;

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move-object v3, v4

    goto :goto_2

    :cond_2
    move-object v3, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v4

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move-object v6, v4

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move-object v7, v4

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const v8, 0x1080027

    .line 90
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move-object v9, v4

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move-object v10, v4

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    goto :goto_9

    :cond_9
    move-object/from16 v4, p10

    :goto_9
    move-object p1, p0

    move p2, v1

    move-object p3, v2

    move-object p4, v3

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v4

    .line 35
    invoke-direct/range {p1 .. p11}, Lorg/acra/config/DialogConfiguration;-><init>(ZLjava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public enabled()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/acra/config/DialogConfiguration;->enabled:Z

    return v0
.end method

.method public final getCommentPrompt()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/DialogConfiguration;->commentPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmailPrompt()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/DialogConfiguration;->emailPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public final getNegativeButtonText()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/DialogConfiguration;->negativeButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public final getPositiveButtonText()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/DialogConfiguration;->positiveButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public final getReportDialogClass()Ljava/lang/Class;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/DialogConfiguration;->reportDialogClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getResIcon()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/DialogConfiguration;->resIcon:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getResTheme()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/DialogConfiguration;->resTheme:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/DialogConfiguration;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/acra/config/DialogConfiguration;->title:Ljava/lang/String;

    return-object v0
.end method
