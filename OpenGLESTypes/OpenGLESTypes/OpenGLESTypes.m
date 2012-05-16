//
//  OpenGLESTypes.m
//  OpenGLESTypes
//
//  Created by Ryan Tsukamoto on 5/4/12.
//  Copyright (c) 2012 Miso Media. All rights reserved.
//

#import <OpenGLESTypes/OpenGLESTypes.h>

Vertex2f Vertex2fMake(GLfloat x, GLfloat y)
{
	Vertex2f result;
	result.x = x;
	result.y = y;
	return result;
}

void Vertex2fSetPointer(Vertex2f* vertex2fs){glVertexPointer(2, GL_FLOAT, 0, vertex2fs);}

Vertex3f Vertex3fMake(GLfloat x, GLfloat y, GLfloat z)
{
	Vertex3f result;
	result.x = x;
	result.y = y;
	result.z = z;
	return result;
}

void Vertex3fSetPointer(Vertex3f* vertex3fs){glVertexPointer(3, GL_FLOAT, 0, vertex3fs);}

Color4u Color4uMake(GLubyte r, GLubyte g, GLubyte b, GLubyte a)
{
	Color4u result;
	result.r = r;
	result.g = g;
	result.b = b;
	result.a = a;
	return result;
}

void Color4uSetPointer(Color4u* color4us){glColorPointer(4, GL_UNSIGNED_BYTE, 0, color4us);}

TexCoords2f TexCoords2fMake(GLfloat u, GLfloat v)
{
	TexCoords2f result;
	result.u = u;
	result.v = v;
	return result;
}

void TexCoords2fSetPointer(TexCoords2f* texCoords2fs){glTexCoordPointer(2, GL_FLOAT, 0, texCoords2fs);}

Vertex2fTexCoords2f Vertex2fTexCoords2fMake(GLfloat x, GLfloat y, GLfloat u, GLfloat v)
{
	Vertex2fTexCoords2f result;
	result.vertex = Vertex2fMake(x, y);
	result.texCoords = TexCoords2fMake(u, v);
	return result;
}

void Vertex2fTexCoords2fSetPointer(Vertex2fTexCoords2f* vertex2fTexCoords2fs)
{
	glVertexPointer(2, GL_FLOAT, sizeof(Vertex2fTexCoords2f), &(vertex2fTexCoords2fs->vertex));
	glTexCoordPointer(2, GL_UNSIGNED_BYTE, sizeof(Vertex2fTexCoords2f), &(vertex2fTexCoords2fs->texCoords));
}

Vertex3fColor4f Vertex3fColor4fMake(Vertex3f vertex, Color4f color)
{
    Vertex3fColor4f result;
    result.vertex = vertex;
    result.color = color;
    return result;
}

void Vertex3fColor4fSetPointer(Vertex3fColor4f *vertex3fColor4fs)
{
    glVertexPointer(3, GL_FLOAT, sizeof(Vertex3fColor4f), &(vertex3fColor4fs->vertex));
    glColorPointer(4, GL_FLOAT, sizeof(Vertex3fColor4f), &(vertex3fColor4fs->color));
}

Vertex3fColor4fTexCoords2f Vertex3fColor4fTexCoords2fMake(Vertex3f vertex, Color4f color, TexCoords2f texCoords)
{
    Vertex3fColor4fTexCoords2f result;
    result.vertex = vertex;
    result.color = color;
    result.texCoords = texCoords;
    return result;
}

void Vertex3fColor4fTexCoords2fSetPointer(Vertex3fColor4fTexCoords2f* vertex3fColor4fTexCoords2fs)
{
    glVertexPointer(3, GL_FLOAT, sizeof(Vertex3fColor4fTexCoords2f), &(vertex3fColor4fTexCoords2fs->vertex));
    glColorPointer(4, GL_FLOAT, sizeof(Vertex3fColor4fTexCoords2f), &(vertex3fColor4fTexCoords2fs->color));
    glTexCoordPointer(2, GL_FLOAT, sizeof(Vertex3fColor4fTexCoords2f), &(vertex3fColor4fTexCoords2fs->texCoords));
}

