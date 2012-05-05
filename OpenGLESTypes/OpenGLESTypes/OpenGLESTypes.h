//
//  OpenGLESTypes.h
//  OpenGLESTypes
//
//  Created by Ryan Tsukamoto on 5/4/12.
//  Copyright (c) 2012 Miso Media. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <OpenGLES/EAGL.h>
#import <OpenGLES/ES1/gl.h>
#import <OpenGLES/ES1/glext.h>
#import <OpenGLES/EAGLDrawable.h>

typedef struct
{
	GLfloat	x;
	GLfloat	y;
}	Vertex2f;

Vertex2f Vertex2fMake(GLfloat x, GLfloat y);
void Vertex2fSetPointer(Vertex2f* vertex2fs);

typedef struct
{
	GLfloat	x;
	GLfloat	y;
	GLfloat	z;
}	Vertex3f;

Vertex3f Vertex3fMake(GLfloat x, GLfloat y, GLfloat z);
void Vertex3fSetPointer(Vertex3f* vertex3fs);

typedef struct
{
	GLubyte	r;
	GLubyte	g;
	GLubyte	b;
	GLubyte	a;
}	Color4u;

Color4u Color4uMake(GLubyte r, GLubyte g, GLubyte b, GLubyte a);
void Color4uSetPointer(Color4u* color4us);

typedef struct
{
	GLfloat	u;
	GLfloat	v;
}	TexCoords2f;

TexCoords2f TexCoords2fMake(GLfloat u, GLfloat v);
void TexCoords2fSetPointer(TexCoords2f* texCoords2fs);

typedef struct
{
	Vertex2f	vertex;
	TexCoords2f	texCoords;
}	Vertex2fTexCoords2f;

Vertex2fTexCoords2f Vertex2fTexCoords2fMake(GLfloat x, GLfloat y, GLfloat u, GLfloat v);
void Vertex2fTexCoords2fSetPointer(Vertex2fTexCoords2f* vertex2fTexCoords2fs);
